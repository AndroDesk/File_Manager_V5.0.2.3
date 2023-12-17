.class public abstract Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;
.super Lcom/miui/maml/ObjectFactory;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObjectFactoryBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/maml/ObjectFactory;",
        ">",
        "Lcom/miui/maml/ObjectFactory;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field public mOld:Lcom/miui/maml/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ObjectFactory;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;->mName:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOld()Lcom/miui/maml/ObjectFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lcom/miui/maml/ObjectFactory;

    .line 3
    return-object v0
.end method

.method public setOld(Lcom/miui/maml/ObjectFactory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lcom/miui/maml/ObjectFactory;

    .line 3
    return-void
.end method
