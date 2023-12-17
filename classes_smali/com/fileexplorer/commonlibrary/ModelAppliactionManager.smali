.class public Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;
.super Ljava/lang/Object;
.source "ModelAppliactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;
    }
.end annotation


# instance fields
.field private mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;
    .registers 1

    .line 1
    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;->access$100()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addAppliaction(Ljava/lang/String;Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;)V
    .registers 4

    .line 1
    if-eqz p2, :cond_7

    .line 3
    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1c

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;

    .line 23
    if-eqz v1, :cond_a

    .line 25
    invoke-interface {v1}, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;->onDestory()V

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-interface {p1, p2}, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;->onCreate(Ljava/lang/Object;)V

    .line 15
    return-void
.end method
