#!/bin/bash
source /var/www/sphinx/sphinx/nitrokey-documentation/config.sh
if [ $? -ne 0 ]
then
	echo "Building Docs.nitrokey.com – [apply_new_content.sh] config.sh not loaded correctly." | mail -s "[Sphinx] ($BASHPID) Error Loading Config File." $admin_mail_address
	echo "$(date) [apply_new_content.sh] ($BASHPID) Error loading config.sh" >> /var/www/sphinx/logs_sphinx/webhook.log
	exit
fi


echo "$(date) [apply_new_content.sh] ($BASHPID) Content change triggered." >> /var/www/sphinx/logs_sphinx/webhook.log

echo "$(date) [apply_new_content.sh] ($BASHPID) Pulling Repo..." >> /var/www/sphinx/logs_sphinx/webhook.log

cd /var/www/sphinx/sphinx/nitrokey-documentation

# pull new content
git pull

if [ $? -eq 0 ]
then
	echo "$(date) [apply_new_content.sh] ($BASHPID) Pulling Repo...DONE" >> /var/www/sphinx/logs_sphinx/webhook.log
else
	echo "$(date) [apply_new_content.sh] ($BASHPID) Pulling Repo...FAILED" >> /var/www/sphinx/logs_sphinx/webhook.log
	echo "$(date) [apply_new_content.sh] ($BASHPID) Pulling Repo...FAILED." | mail -s "[Sphinx] Pulling Repo FAILED." $admin_mail_address
	exit
fi


# build english version
echo "$(date) [apply_new_content.sh] ($BASHPID) Building englisch Version..." >> /var/www/sphinx/logs_sphinx/webhook.log


if [ $build_mode == "full" ]
then
	sphinx-build -a -D language='en' -b html . /var/www/sphinx/www/docs.nitrokey.com_en_temp
	status=$?
elif [ $build_mode == "incremental" ]
then
	sphinx-build -D language='en' -b html . /var/www/sphinx/www/docs.nitrokey.com_en_temp
	status=$?
else
	echo "Building Docs.nitrokey.com Language $lang FAILED. Sphinx build mode in config.sh unkown." | mail -s "[Sphinx] ($BASHPID) Building Language $lang FAILED." $admin_mail_address
fi

if [ $status -eq 0 ]
then
	echo "$(date) [apply_new_content.sh] ($BASHPID) Building englisch Versions...DONE" >> /var/www/sphinx/logs_sphinx/webhook.log

	for lang in "${languages[@]}"
	do
		mv /var/www/sphinx/www/static/$lang /var/www/sphinx/www/docs.nitrokey.com_en_temp/
	done
	rm /var/www/sphinx/www/static -r
	mv /var/www/sphinx/www/docs.nitrokey.com_en_temp /var/www/sphinx/www/static
else
	echo echo "$(date) [apply_new_content.sh] Building englisch Versions...FAILED" >> /var/www/sphinx/logs_sphinx/webhook.log
	echo "Building Docs.nitrokey.com Language EN FAILED. " | mail -s "[Sphinx] ($BASHPID) Building Language EN FAILED." $admin_mail_address
fi


echo -n "$(date) [apply_new_content.sh] ($BASHPID) Building /locales/ ..." >> /var/www/sphinx/logs_sphinx/webhook.log

# generate Sphinx Language Args 

sphinx_args=""
for lang in "${languages[@]}"
do
	sphinx_args=$sphinx_args" -l $lang"
done

# generate language files and push
sphinx-build -b gettext . ./locales/
eval sphinx-intl update -p ./locales/ $sphinx_args 
if [ $? -eq 0 ]
then
	echo "$(date) [apply_new_content.sh] ($BASHPID) Building /locales/ ...DONE" >> /var/www/sphinx/logs_sphinx/webhook.log
else
	echo "$(date) [apply_new_content.sh] ($BASHPID) Building /locales/ ...FAILED" >> /var/www/sphinx/logs_sphinx/webhook.log
	echo "Building  /locales/ FAILED." | mail -s "[Sphinx] Building Locales FAILED." $admin_mail_address

fi

echo "$(date) [apply_new_content.sh] ($BASHPID) Pushing upstream ..." >> /var/www/sphinx/logs_sphinx/webhook.log

git add --all
git commit -m "Language Files generated by Sphinx ($BASHPID)"
git push

echo "$(date) [apply_new_content.sh] ($BASHPID) Pushing upstream ...DONE" >> /var/www/sphinx/logs_sphinx/webhook.log



source ../trigger_deepl_apikey.sh

echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger weblate pull..." >> /var/www/sphinx/logs_sphinx/webhook.log
bash trigger_weblatepull.sh $apikey >> /var/www/sphinx/logs_sphinx/trigger_weblate_repository.log
echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger weblate pull...passed" >> /var/www/sphinx/logs_sphinx/webhook.log


echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger deepl translation..." >> /var/www/sphinx/logs_sphinx/webhook.log
bash trigger_deepl.sh $apikey >> /var/www/sphinx/logs_sphinx/trigger_deepl.log
echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger deepl translation...passed" >> /var/www/sphinx/logs_sphinx/webhook.log

echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger weblate commit..." >> /var/www/sphinx/logs_sphinx/webhook.log
bash trigger_weblatecommit.sh $apikey >> /var/www/sphinx/logs_sphinx/trigger_weblate_repository.log
echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger weblate commit...passed" >> /var/www/sphinx/logs_sphinx/webhook.log

echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger weblate push..." >> /var/www/sphinx/logs_sphinx/webhook.log
bash trigger_weblatepush.sh $apikey >> /var/www/sphinx/logs_sphinx/trigger_weblate_repository.log
echo "$(date) [apply_new_content.sh] ($BASHPID) Trigger weblate push...passed" >> /var/www/sphinx/logs_sphinx/webhook.log

