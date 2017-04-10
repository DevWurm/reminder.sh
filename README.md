# reminder.sh
Simple shell script for automatically sending reminders and other information via email.

**reminder.sh** provides a simple setup for sending custom information to a list of recipients via [sendmail](https://en.wikipedia.org/wiki/Sendmail).

## Setting it up
### Installation
It's easy: Just clone this repo.

### Setting the recipients
Edit the file `recipients.txt` and list all your recipients email addresses seperated by commas.

### Setting the content
Edit the file `content.txt`. Enter the emails subject in the first line behind the `Subject:` header qualifier and the body below this line.

### Setting the reminders origin
Set the origins email address and display name in `send-reminder.sh` at the tagged section.

## Sending a reminder
After setting up **reminder.sh** you can easily send your message to your recipients by invoking `send-reminder.sh`. You can find
the error log at `error.log` and the submission log at `sent.log`.

## Automate a recurring reminder
One way to automatically send a recurring reminder is [Cron](https://en.wikipedia.org/wiki/Cron). To set it up run
```
crontab -e
```
and insert the line
```
x x x x x /your/path/to/reminder.sh/send-reminder.sh
```
where `x x x x x` is your [Cron schedule expression](https://en.wikipedia.org/wiki/Cron#CRON_expression).

Another way would be to use [Systemd timers](https://www.freedesktop.org/software/systemd/man/systemd.timer.html), but I didn't use this
method yet.

## License
`reminder.sh` is offered under MIT License (Read LICENSE). Use it! :)<br>
Copyright 2017 DevWurm

## Collaborating
I really appreciate any kind of collaboration!<br>
You can use the [GitHub issue tracker](https://github.com/DevWurm/reminder.sh/issues) for bugs and feature requests or [create a pull request](https://github.com/DevWurm/reminder.sh/pulls) to submit
changes.
If you don't want to use these possibilities, you can also write me an email to
<a href='mailto:devwurm@devwurm.net'>devwurm@devwurm.net</a>.

## Contact
If you have any questions, ideas, etc. feel free to contact me:<br>
DevWurm<br>
Email: <a href='mailto:devwurm@devwurm.net'>devwurm@devwurm.net</a><br>
Jabber: devwurm@conversations.im<br>
Twitter: [@DevWurm](https://twitter.com/DevWurm)<br>
