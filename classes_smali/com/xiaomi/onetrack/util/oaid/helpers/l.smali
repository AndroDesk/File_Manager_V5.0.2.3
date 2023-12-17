.class public Lcom/xiaomi/onetrack/util/oaid/helpers/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "VivoDeviceIDHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v3

    .line 9
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_34

    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_26

    .line 29
    const-string v1, "value"

    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    move-result v1

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    :cond_26
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_34

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string v1, "VivoDeviceIDHelper"

    .line 50
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_34
    :goto_34
    return-object v0
.end method
