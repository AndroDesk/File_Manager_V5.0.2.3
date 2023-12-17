.class public final Landroidx/appcompat/app/k$b;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/os/LocaleList;
    .registers 1

    .line 1
    check-cast p0, Landroid/app/LocaleManager;

    .line 3
    invoke-virtual {p0}, Landroid/app/LocaleManager;->getApplicationLocales()Landroid/os/LocaleList;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Ljava/lang/Object;Landroid/os/LocaleList;)V
    .registers 2

    .line 1
    check-cast p0, Landroid/app/LocaleManager;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Landroid/os/LocaleList;)V

    .line 6
    return-void
.end method
