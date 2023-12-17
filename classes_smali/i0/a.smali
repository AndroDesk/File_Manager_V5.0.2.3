.class public final Li0/a;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/a$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    sget v2, Li0/a$a;->a:I

    .line 9
    :cond_8
    if-lt v0, v1, :cond_c

    .line 11
    sget v2, Li0/a$a;->a:I

    .line 13
    :cond_c
    if-lt v0, v1, :cond_10

    .line 15
    sget v2, Li0/a$a;->a:I

    .line 17
    :cond_10
    if-lt v0, v1, :cond_14

    .line 19
    sget v0, Li0/a$a;->a:I

    .line 21
    :cond_14
    return-void
.end method

.method public static a()Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x21

    .line 7
    if-ge v0, v3, :cond_2e

    .line 9
    const/16 v3, 0x20

    .line 11
    if-lt v0, v3, :cond_2f

    .line 13
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 15
    const-string v3, "REL"

    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_17

    .line 23
    goto :goto_2b

    .line 24
    :cond_17
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v4, "Tiramisu"

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 39
    move-result v0

    .line 40
    if-ltz v0, :cond_2b

    .line 42
    move v0, v2

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    :goto_2b
    move v0, v1

    .line 45
    :goto_2c
    if-eqz v0, :cond_2f

    .line 47
    :cond_2e
    move v1, v2

    .line 48
    :cond_2f
    return v1
.end method

.method public static b()Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x21

    .line 7
    if-lt v0, v3, :cond_2b

    .line 9
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 11
    const-string v3, "REL"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_13

    .line 19
    goto :goto_27

    .line 20
    :cond_13
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v4, "UpsideDownCake"

    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    if-ltz v0, :cond_27

    .line 38
    move v0, v1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    move v0, v2

    .line 41
    :goto_28
    if-eqz v0, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v1, v2

    .line 45
    :goto_2c
    return v1
.end method
