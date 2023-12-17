.class public final Lcom/miui/maml/shader/ShaderElement$GradientStops;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GradientStops"
.end annotation


# instance fields
.field private mColors:[I

.field public mGradientStopArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/shader/ShaderElement$GradientStop;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:[F

.field public final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/shader/ShaderElement;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColors()[I
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    return-object v0
.end method

.method public getPositions()[F
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-object v0
.end method

.method public init()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public update()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getColor()I

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aget v4, v3, v0

    const/4 v5, 0x1

    if-eq v2, v4, :cond_1c

    move v1, v5

    :cond_1c
    aput v2, v3, v0

    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aget v4, v3, v0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_33

    move v1, v5

    :cond_33
    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_38
    if-eqz v1, :cond_3f

    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    :cond_3f
    return-void
.end method
