.class public Lmiuix/responsive/wrapper/WrapperHelper;
.super Ljava/lang/Object;
.source "WrapperHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_3a

    :cond_11
    :goto_11
    instance-of v1, v0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    check-cast p0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    invoke-virtual {p0, p1}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_3a

    :cond_1f
    instance-of v1, p1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    if-eqz v1, :cond_29

    move-object v1, p1

    check-cast v1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    invoke-virtual {v1, v0}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mFactory2"

    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :goto_3a
    return-void
.end method

.method public static setOnHierarchyChangeListener(Landroid/view/ViewGroup;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 4

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOnHierarchyChangeListener"

    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;

    if-eqz v1, :cond_1a

    check-cast v0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;

    invoke-virtual {v0, p1}, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1d
    :goto_1d
    return-void
.end method
