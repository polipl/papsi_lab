# Generated by Django 4.1.3 on 2022-11-11 18:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('DICTIONARY', '0012_remove_ticketshistory_created_user_and_more'),
        ('SERVICEDESK', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='tickets',
            name='ticket_type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='DICTIONARY.tickettypes'),
        ),
    ]