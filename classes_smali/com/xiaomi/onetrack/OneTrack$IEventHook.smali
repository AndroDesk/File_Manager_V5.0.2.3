.class public interface abstract Lcom/xiaomi/onetrack/OneTrack$IEventHook;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEventHook"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract isCustomDauEvent(Ljava/lang/String;)Z
.end method

.method public abstract isRecommendEvent(Ljava/lang/String;)Z
.end method
