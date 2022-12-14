# Generated by Django 4.1.3 on 2022-11-11 14:35

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("DICTIONARY", "0006_rename_name_ticketspriority_priority_name"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="tickets",
            name="assign_user",
        ),
        migrations.RemoveField(
            model_name="tickets",
            name="create_user",
        ),
        migrations.AddField(
            model_name="tickets",
            name="assigned_user",
            field=models.ForeignKey(
                blank=True,
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                related_name="assigned_user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AddField(
            model_name="tickets",
            name="created_user",
            field=models.ForeignKey(
                blank=True,
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                related_name="created_user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
    ]
