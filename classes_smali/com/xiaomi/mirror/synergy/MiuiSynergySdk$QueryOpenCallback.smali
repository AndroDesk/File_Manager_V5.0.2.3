.class public interface abstract Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryOpenCallback"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onQueryResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;",
            ">;)V"
        }
    .end annotation
.end method
