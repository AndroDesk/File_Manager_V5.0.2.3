.class Lcom/miui/maml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_74

    :cond_11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_74

    cmp-long v4, v2, v4

    if-gez v4, :cond_32

    goto :goto_74

    :cond_32
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v4

    long-to-double v0, v0

    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    long-to-double v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0, v2, v3}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    :cond_5b
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_74
    :goto_74
    return-void
.end method