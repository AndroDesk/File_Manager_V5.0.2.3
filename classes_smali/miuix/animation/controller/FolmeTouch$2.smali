.class Lmiuix/animation/controller/FolmeTouch$2;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeTouch;->bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;

.field public final synthetic val$config:[Lmiuix/animation/base/AnimConfig;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$2;->this$0:Lmiuix/animation/controller/FolmeTouch;

    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$config:[Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$2;->this$0:Lmiuix/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$config:[Lmiuix/animation/base/AnimConfig;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lmiuix/animation/controller/FolmeTouch;->access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    return-void
.end method
