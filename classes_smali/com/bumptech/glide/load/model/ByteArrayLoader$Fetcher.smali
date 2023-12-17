.class Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final model:[B


# direct methods
.method public constructor <init>([BLcom/bumptech/glide/load/model/ByteArrayLoader$Converter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 1

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;->getDataClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    .line 3
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    .line 5
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;->convert([B)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
