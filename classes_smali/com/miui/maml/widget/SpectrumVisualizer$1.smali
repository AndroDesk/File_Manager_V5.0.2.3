.class Lcom/miui/maml/widget/SpectrumVisualizer$1;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$1;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$1;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 3
    invoke-virtual {p1, p2}, Lcom/miui/maml/widget/SpectrumVisualizer;->update([B)V

    .line 6
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4

    return-void
.end method
