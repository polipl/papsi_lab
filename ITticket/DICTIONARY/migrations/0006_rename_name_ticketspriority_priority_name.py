# Generated by Django 4.1.3 on 2022-11-11 14:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("DICTIONARY", "0005_rename_type_tickettypes_type_name"),
    ]

    operations = [
        migrations.RenameField(
            model_name="ticketspriority",
            old_name="name",
            new_name="priority_name",
        ),
    ]
