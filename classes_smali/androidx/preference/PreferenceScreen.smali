.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    sget v0, Landroidx/preference/i;->preferenceScreenStyle:I

    .line 3
    const v1, 0x101008b

    .line 6
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->a:Z

    .line 16
    return-void
.end method


# virtual methods
.method public final isOnSameScreenAsChildren()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onClick()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1e

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1e

    .line 13
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_1e

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Landroidx/preference/f;->j:Landroidx/preference/f$b;

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-interface {v0, p0}, Landroidx/preference/f$b;->onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method
