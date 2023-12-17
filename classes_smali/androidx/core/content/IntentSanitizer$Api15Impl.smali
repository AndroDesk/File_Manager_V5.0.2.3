.class Landroidx/core/content/IntentSanitizer$Api15Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getSelector(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static setSelector(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4
    return-void
.end method
