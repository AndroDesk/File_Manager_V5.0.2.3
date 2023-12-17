.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->initAnimConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
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
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1f

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 20
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 22
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 24
    if-ne p2, v0, :cond_7

    .line 26
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$402(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Z)Z

    .line 32
    :cond_1f
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
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
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_39

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 20
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 22
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 24
    if-ne v0, v1, :cond_23

    .line 26
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 28
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 31
    move-result p2

    .line 32
    invoke-static {v0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V

    .line 35
    goto :goto_7

    .line 36
    :cond_23
    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 38
    if-ne v0, v1, :cond_7

    .line 40
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 42
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$400(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_7

    .line 48
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$3;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 50
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 53
    move-result p2

    .line 54
    invoke-static {v0, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$500(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V

    .line 57
    goto :goto_7

    .line 58
    :cond_39
    return-void
.end method
