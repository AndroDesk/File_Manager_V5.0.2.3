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
.method public constructor <init>(Lcom/miui/maml/shader/ShaderElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public getColors()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 3
    return-object v0
.end method

.method public getPositions()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [F

    .line 15
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 17
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public update()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_38

    .line 9
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getColor()I

    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 23
    aget v4, v3, v0

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq v2, v4, :cond_1c

    .line 28
    move v1, v5

    .line 29
    :cond_1c
    aput v2, v3, v0

    .line 31
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 39
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 45
    aget v4, v3, v0

    .line 47
    cmpl-float v4, v2, v4

    .line 49
    if-eqz v4, :cond_33

    .line 51
    move v1, v5

    .line 52
    :cond_33
    aput v2, v3, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_2

    .line 57
    :cond_38
    if-eqz v1, :cond_3f

    .line 59
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    .line 64
    :cond_3f
    return-void
.end method
