.class public final Le3/a$a;
.super Ljava/lang/Object;
.source "JDK7PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "SDK_INT"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    instance-of v2, v1, Ljava/lang/Integer;

    .line 20
    if-eqz v2, :cond_18

    .line 22
    check-cast v1, Ljava/lang/Integer;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    .line 24
    goto :goto_19

    .line 25
    :catchall_18
    :cond_18
    move-object v1, v0

    .line 26
    :goto_19
    if-eqz v1, :cond_27

    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 31
    move-result v2

    .line 32
    if-lez v2, :cond_23

    .line 34
    const/4 v2, 0x1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v2, 0x0

    .line 37
    :goto_24
    if-eqz v2, :cond_27

    .line 39
    move-object v0, v1

    .line 40
    :cond_27
    sput-object v0, Le3/a$a;->a:Ljava/lang/Integer;

    .line 42
    return-void
.end method
