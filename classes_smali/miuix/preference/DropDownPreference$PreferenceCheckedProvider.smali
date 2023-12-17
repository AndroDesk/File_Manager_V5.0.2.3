.class Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceCheckedProvider"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mPreference:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 6
    iput-object p2, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 8
    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 3
    invoke-static {v0}, Lmiuix/preference/DropDownPreference;->access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    if-ge p1, v0, :cond_1f

    .line 10
    if-gez p1, :cond_c

    .line 12
    goto :goto_1f

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 15
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 21
    invoke-static {v1}, Lmiuix/preference/DropDownPreference;->access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    .line 24
    move-result-object v1

    .line 25
    aget-object p1, v1, p1

    .line 27
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    :goto_1f
    const-string p1, "DropDownPreference"

    .line 34
    const-string v0, "pos out of entries\' length."

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 p1, 0x0

    .line 40
    return p1
.end method
