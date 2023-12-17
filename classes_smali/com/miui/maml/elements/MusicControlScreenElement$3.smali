.class Lcom/miui/maml/elements/MusicControlScreenElement$3;
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
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$3;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$3;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$3;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicController;->reset()V

    .line 18
    :cond_11
    return-void
.end method
