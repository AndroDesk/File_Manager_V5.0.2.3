.class public final Landroidx/preference/ListPreference$a;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroidx/preference/Preference$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/preference/Preference$f<",
        "Landroidx/preference/ListPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Landroidx/preference/ListPreference$a;


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
    check-cast p1, Landroidx/preference/ListPreference;

    .line 3
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->a()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    sget v0, Landroidx/preference/o;->not_set:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->a()Ljava/lang/CharSequence;

    .line 27
    move-result-object p1

    .line 28
    :goto_1b
    return-object p1
.end method
