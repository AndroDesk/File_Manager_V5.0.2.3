.class public Lx3/b;
.super La/b;
.source "GdprUtilsCompat_V23.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b;-><init>(I)V

    .line 5
    return-void
.end method


# virtual methods
.method public final L(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "micloud_gdpr_permission_granted"

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    return v1
.end method
