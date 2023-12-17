.class public Lmiuix/responsive/wrapper/WrapperHelper;
.super Ljava/lang/Object;
.source "WrapperHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 17
    goto :goto_3a

    .line 18
    :cond_11
    :goto_11
    instance-of v1, v0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    .line 20
    if-eqz v1, :cond_1f

    .line 22
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    .line 28
    invoke-virtual {p0, p1}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 31
    goto :goto_3a

    .line 32
    :cond_1f
    instance-of v1, p1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    .line 34
    if-eqz v1, :cond_29

    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    .line 39
    invoke-virtual {v1, v0}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 42
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "mFactory2"

    .line 52
    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p0, v0, p1}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 59
    :goto_3a
    return-void
.end method

.method public static setOnHierarchyChangeListener(Landroid/view/ViewGroup;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_1d

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mOnHierarchyChangeListener"

    .line 9
    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;

    .line 19
    if-eqz v1, :cond_1a

    .line 21
    check-cast v0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;

    .line 23
    invoke-virtual {v0, p1}, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method
