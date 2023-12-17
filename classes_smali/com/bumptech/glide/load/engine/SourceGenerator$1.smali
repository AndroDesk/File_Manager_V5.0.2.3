.class Lcom/bumptech/glide/load/engine/SourceGenerator$1;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/SourceGenerator;->startNextLoad(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/engine/SourceGenerator;

.field public final synthetic val$toStart:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/SourceGenerator;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->this$0:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDataReady(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->this$0:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/SourceGenerator;->isCurrentRequest(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->this$0:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/SourceGenerator;->onDataReadyInternal(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;Ljava/lang/Object;)V

    .line 18
    :cond_11
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->this$0:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/SourceGenerator;->isCurrentRequest(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->this$0:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/SourceGenerator;->onLoadFailedInternal(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;Ljava/lang/Exception;)V

    .line 18
    :cond_11
    return-void
.end method
