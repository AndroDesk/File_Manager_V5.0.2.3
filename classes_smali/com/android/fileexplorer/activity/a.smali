.class public final synthetic Lcom/android/fileexplorer/activity/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/preference/PreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/fileexplorer/activity/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/activity/a;->b:Lmiuix/preference/PreferenceFragment;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/activity/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/activity/a;->b:Lmiuix/preference/PreferenceFragment;

    check-cast v0, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;->e(Lcom/android/fileexplorer/activity/ExtendServiceActivity$ExtendSeviceSettingFragment;Landroid/content/DialogInterface;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/a;->b:Lmiuix/preference/PreferenceFragment;

    check-cast v0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->c(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
