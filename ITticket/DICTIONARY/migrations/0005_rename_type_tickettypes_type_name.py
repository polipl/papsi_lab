# Generated by Django 4.1.3 on 2022-11-11 14:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("DICTIONARY", "0004_tickets_assign_user_alter_tickets_create_user"),
    ]

    operations = [
        migrations.RenameField(
            model_name="tickettypes",
            old_name="type",
            new_name="type_name",
        ),
    ]
