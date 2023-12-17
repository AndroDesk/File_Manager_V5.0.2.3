.class Lcom/miui/maml/elements/video/BaseVideoView$7;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$7;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 4
    goto :goto_9

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$7;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 7
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->pause()V

    .line 10
    :goto_9
    return-void
.end method
