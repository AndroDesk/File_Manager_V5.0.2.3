.class Landroidx/core/content/IntentSanitizer$Api29Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getIdentifier(Landroid/content/Intent;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/a0;->l(Landroid/content/Intent;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static setIdentifier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->e(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
