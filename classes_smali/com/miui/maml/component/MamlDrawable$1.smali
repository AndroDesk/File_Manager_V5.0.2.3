.class Lcom/miui/maml/component/MamlDrawable$1;
.super Ljava/lang/Object;
.source "MamlDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/component/MamlDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/component/MamlDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable$1;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable$1;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-static {v0}, Lcom/miui/maml/component/MamlDrawable;->access$000(Lcom/miui/maml/component/MamlDrawable;)V

    return-void
.end method
