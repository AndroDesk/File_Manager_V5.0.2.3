.class public Lmiuix/core/compat/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentResolverForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/ContentResolver;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
