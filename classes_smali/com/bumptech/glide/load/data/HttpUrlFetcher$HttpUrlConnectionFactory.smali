.class interface abstract Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/HttpUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpUrlConnectionFactory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract build(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method