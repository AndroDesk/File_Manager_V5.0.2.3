.class public Lcom/xiaomi/onetrack/e/a;
.super Lcom/xiaomi/onetrack/f/b;


# static fields
.field private static final d:Ljava/lang/String; = "CustomEvent"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/b;-><init>()V

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/f/b;->c(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/f/b;->b(J)V

    .line 20
    new-instance p2, Lorg/json/JSONObject;

    .line 22
    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Lorg/json/JSONObject;)V

    .line 28
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    .line 31
    move-result-object p2

    .line 32
    const-string p4, "level"

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_36

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    const-string p2, "CustomEvent error:"

    .line 46
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p2

    .line 50
    const-string p3, "CustomEvent"

    .line 52
    invoke-static {p1, p2, p3}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    :goto_36
    return-void
.end method
