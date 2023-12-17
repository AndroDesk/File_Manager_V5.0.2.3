.class public final Lb/a$a;
.super Lc/a;
.source "WpsSnapshotV1Fetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

.field public final synthetic b:Lb/a;


# direct methods
.method public constructor <init>(Lb/a;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb/a$a;->b:Lb/a;

    .line 3
    iput-object p2, p0, Lb/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 5
    invoke-direct {p0}, Lc/a;-><init>()V

    .line 8
    return-void
.end method
