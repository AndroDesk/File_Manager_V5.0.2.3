.class public abstract Lcom/xiaomi/keychainsdk/request/KeyBagRequestor;
.super Ljava/lang/Object;
.source "KeyBagRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/request/KeyBagRequestor$KeyBagRequestorException;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract requestGet(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract requestPost(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;)Ljava/lang/String;
.end method
