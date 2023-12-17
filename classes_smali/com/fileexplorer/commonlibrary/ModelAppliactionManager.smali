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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;
    .registers 1

    invoke-static {}, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager$Holder;->access$100()Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAppliaction(Ljava/lang/String;Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;->onDestory()V

    goto :goto_a

    :cond_1c
    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/fileexplorer/commonlibrary/ModelAppliactionManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-interface {p1, p2}, Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;->onCreate(Ljava/lang/Object;)V

    return-void
.end method
