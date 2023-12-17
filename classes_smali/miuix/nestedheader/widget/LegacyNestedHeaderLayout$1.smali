.class Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;
.super Ljava/lang/Object;
.source "LegacyNestedHeaderLayout.java"

# interfaces
.implements Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartNestedScroll(I)V
    .registers 3

    if-nez p1, :cond_9

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Z)V

    goto :goto_e

    :cond_9
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$100(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V

    :goto_e
    return-void
.end method

.method public onStopNestedScroll(I)V
    .registers 3

    if-nez p1, :cond_8

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Z)V

    :cond_8
    return-void
.end method

.method public onStopNestedScrollAccepted(I)V
    .registers 2

    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$300(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V

    return-void
.end method
