.class Lmiuix/responsive/page/manager/BaseResponseStateManager$1;
.super Lmiuix/responsive/wrapper/Factory2Wrapper;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-direct {p0}, Lmiuix/responsive/wrapper/Factory2Wrapper;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$1;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-static {v0, p3, p1, p4, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->access$000(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/responsive/wrapper/Factory2Wrapper;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
