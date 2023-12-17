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
.method public constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_74

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_74

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 20
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "android.media.metadata.DURATION"

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 32
    invoke-static {v2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    .line 39
    move-result-wide v2

    .line 40
    const-wide/16 v4, 0x0

    .line 42
    cmp-long v6, v0, v4

    .line 44
    if-lez v6, :cond_74

    .line 46
    cmp-long v4, v2, v4

    .line 48
    if-gez v4, :cond_32

    .line 50
    goto :goto_74

    .line 51
    :cond_32
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 53
    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 56
    move-result-object v4

    .line 57
    long-to-double v0, v0

    .line 58
    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 63
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 66
    move-result-object v0

    .line 67
    long-to-double v4, v2

    .line 68
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 73
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2700(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5b

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 81
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_5b

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 89
    invoke-static {v0, v2, v3}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2800(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    .line 92
    :cond_5b
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 94
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 97
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 99
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$4;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 109
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2900(Lcom/miui/maml/elements/MusicControlScreenElement;)I

    .line 112
    move-result v1

    .line 113
    int-to-long v1, v1

    .line 114
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :cond_74
    :goto_74
    return-void
.end method
