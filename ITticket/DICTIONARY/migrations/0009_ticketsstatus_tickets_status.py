# Generated by Django 4.1.3 on 2022-11-11 15:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('DICTIONARY', '0008_alter_tickets_options_ticketshistory'),
    ]

    operations = [
        migrations.CreateModel(
            name='TicketsStatus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status_name', models.CharField(blank=True, max_length=20, null=True)),
            ],
            options={
                'verbose_name': 'Status Ticketu',
                'verbose_name_plural': 'Statusy Ticketów',
            },
        ),
        migrations.AddField(
            model_name='tickets',
            name='status',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='DICTIONARY.ticketsstatus'),
        ),
    ]
