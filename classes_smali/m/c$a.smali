.class public final Lm/c$a;
.super Ljava/lang/Object;
.source "ContextThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lm/c;Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
