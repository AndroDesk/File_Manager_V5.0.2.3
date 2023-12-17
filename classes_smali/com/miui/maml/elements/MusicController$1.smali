.class Lcom/miui/maml/elements/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/MusicController;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController$1;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$1;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 3
    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicController;->access$000(Lcom/miui/maml/elements/MusicController;Ljava/util/List;)V

    .line 6
    const-string p1, "MAML_MusicController"

    .line 8
    const-string v0, "onActiveSessionsChanged"

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method
