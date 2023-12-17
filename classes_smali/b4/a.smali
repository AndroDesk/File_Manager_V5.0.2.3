.class public final Lb4/a;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field public static c:Lb4/a;


# instance fields
.field public final a:Landroid/net/wifi/WifiManager;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "connectivity"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 16
    const-string v0, "wifi"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 24
    iput-object p1, p0, Lb4/a;->a:Landroid/net/wifi/WifiManager;

    .line 26
    return-void
.end method
