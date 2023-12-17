.class Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "LegacyNestedHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->autoAdsorption(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 3
    iput-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;->val$tag:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;->val$tag:Ljava/lang/String;

    .line 3
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1b

    .line 9
    iget-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 11
    iget-object v0, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;->val$tag:Ljava/lang/String;

    .line 13
    invoke-static {p2, v0}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$400(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;Ljava/lang/String;)Z

    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1b

    .line 19
    iget-object p2, p0, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;

    .line 21
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 24
    move-result p1

    .line 25
    invoke-static {p2, p1}, Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;->access$500(Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;I)V

    .line 28
    :cond_1b
    return-void
.end method
