.class public Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;
.super Ljava/lang/Object;
.source "OnHierarchyChangeListenerWrapper.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3
    return-void
.end method
