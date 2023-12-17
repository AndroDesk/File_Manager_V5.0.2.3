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
.method public constructor <init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStartNestedScroll(I)V
    .registers 3

    .line 1
    if-nez p1, :cond_9

    .line 3
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Z)V

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 12
    invoke-static {p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$100(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V

    .line 15
    :goto_e
    return-void
.end method

.method public onStopNestedScroll(I)V
    .registers 3

    .line 1
    if-nez p1, :cond_8

    .line 3
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Z)V

    .line 9
    :cond_8
    return-void
.end method

.method public onStopNestedScrollAccepted(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 3
    invoke-static {p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 12
    invoke-static {p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$300(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;)V

    .line 15
    return-void
.end method
