.class public final Landroidx/preference/EditTextPreference$b;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Landroidx/preference/Preference$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/EditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/preference/Preference$f<",
        "Landroidx/preference/EditTextPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Landroidx/preference/EditTextPreference$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 3
    iget-object v0, p1, Landroidx/preference/EditTextPreference;->g:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    sget v0, Landroidx/preference/o;->not_set:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    iget-object p1, p1, Landroidx/preference/EditTextPreference;->g:Ljava/lang/String;

    .line 24
    :goto_17
    return-object p1
.end method
