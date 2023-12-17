.class public Landroidx/preference/EditTextPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "EditTextPreferenceDialogFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public i:Landroid/widget/EditText;

.field public j:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->b(Landroid/view/View;)V

    .line 4
    const v0, 0x1020003

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/EditText;

    .line 13
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->i:Landroid/widget/EditText;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 18
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->i:Landroid/widget/EditText;

    .line 20
    if-eqz p1, :cond_28

    .line 22
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->i:Landroid/widget/EditText;

    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 40
    return-void

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public final c(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_21

    .line 3
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->i:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 19
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_21

    .line 25
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 31
    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 34
    :cond_21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_10

    .line 6
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 12
    iget-object p1, p1, Landroidx/preference/EditTextPreference;->g:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    .line 25
    :goto_18
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    .line 6
    const-string v1, "EditTextPreferenceDialogFragment.text"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method
