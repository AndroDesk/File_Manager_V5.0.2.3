.class Lcom/miui/maml/data/ContentProviderBinder$1;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$1;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$1;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/data/ContentProviderBinder;->access$000(Lcom/miui/maml/data/ContentProviderBinder;)V

    .line 6
    return-void
.end method
