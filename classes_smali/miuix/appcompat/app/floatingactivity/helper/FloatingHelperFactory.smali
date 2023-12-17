.class public Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;
.super Ljava/lang/Object;
.source "FloatingHelperFactory.java"


# static fields
.field public static final TYPE_FOLD:I = 0x2

.field public static final TYPE_PAD:I = 0x1

.field public static final TYPE_PHONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_16

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_10

    .line 11
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;

    .line 13
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PhoneFloatingActivityHelper;-><init>(Landroid/content/Context;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;

    .line 19
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 22
    return-object v0

    .line 23
    :cond_16
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;

    .line 25
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 28
    return-object v0
.end method

.method public static getFloatingHelperType(Lmiuix/appcompat/app/AppCompatActivity;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_10

    .line 11
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_10
    if-nez p0, :cond_18

    .line 19
    sget-boolean p0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 21
    if-eqz p0, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    return p0
.end method
