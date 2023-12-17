.class public Lcom/miui/maml/elements/MusicListenerService$RCBinder;
.super Landroid/os/Binder;
.source "MusicListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/MusicListenerService;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicListenerService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;->this$0:Lcom/miui/maml/elements/MusicListenerService;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lcom/miui/maml/elements/MusicListenerService;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;->this$0:Lcom/miui/maml/elements/MusicListenerService;

    .line 3
    return-object v0
.end method
