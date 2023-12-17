.class Lmiuix/preference/PreferenceGroupAdapter$3;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter;->requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_d

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p2, v0, :cond_d

    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p2, v0, :cond_d

    .line 13
    goto :goto_2c

    .line 14
    :cond_d
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 16
    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_2c

    .line 22
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 24
    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z

    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_2c

    .line 30
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z

    .line 36
    new-instance p2, Lmiuix/preference/PreferenceGroupAdapter$3$1;

    .line 38
    invoke-direct {p2, p0}, Lmiuix/preference/PreferenceGroupAdapter$3$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter$3;)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    return v0

    .line 45
    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_d

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p2, v0, :cond_d

    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p2, v0, :cond_d

    .line 13
    goto :goto_2b

    .line 14
    :cond_d
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 16
    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_2b

    .line 22
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 24
    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z

    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_2b

    .line 30
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$3;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z

    .line 36
    new-instance p2, Lmiuix/preference/PreferenceGroupAdapter$3$2;

    .line 38
    invoke-direct {p2, p0}, Lmiuix/preference/PreferenceGroupAdapter$3$2;-><init>(Lmiuix/preference/PreferenceGroupAdapter$3;)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method
