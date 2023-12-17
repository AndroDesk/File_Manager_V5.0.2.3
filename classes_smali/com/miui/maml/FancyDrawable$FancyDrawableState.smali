.class final Lcom/miui/maml/FancyDrawable$FancyDrawableState;
.super Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.source "FancyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FancyDrawableState"
.end annotation


# instance fields
.field public mRendererCore:Lcom/miui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 6
    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/miui/maml/MamlDrawable;
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/FancyDrawable;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 5
    invoke-direct {v0, v1}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    .line 8
    return-object v0
.end method
