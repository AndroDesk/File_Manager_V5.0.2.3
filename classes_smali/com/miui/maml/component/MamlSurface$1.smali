.class Lcom/miui/maml/component/MamlSurface$1;
.super Ljava/lang/Object;
.source "MamlSurface.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/component/MamlSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/component/MamlSurface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    invoke-static {v0}, Lcom/miui/maml/component/MamlSurface;->access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface$1;->this$0:Lcom/miui/maml/component/MamlSurface;

    invoke-static {v0}, Lcom/miui/maml/component/MamlSurface;->access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
