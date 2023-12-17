.class public final Lz/a;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/a$b;,
        Lz/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lz/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz/a;->b:I

    iput v0, p0, Lz/a;->c:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lz/a;->d:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lz/a;->e:Landroid/util/SparseArray;

    iput-object p2, p0, Lz/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_20
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    const/4 v1, 0x0

    :goto_25
    const/4 v2, 0x1

    if-eq p3, v2, :cond_a6

    if-eqz p3, :cond_95

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2f

    goto/16 :goto_98

    :cond_2f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    sparse-switch v4, :sswitch_data_a8

    goto :goto_6e

    :sswitch_3d
    const-string v2, "Variant"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    move v2, v6

    goto :goto_6f

    :sswitch_47
    const-string v2, "layoutDescription"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    const/4 v2, 0x0

    goto :goto_6f

    :sswitch_51
    const-string v4, "StateSet"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    goto :goto_6f

    :sswitch_5a
    const-string v2, "State"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    move v2, v3

    goto :goto_6f

    :sswitch_64
    const-string v2, "ConstraintSet"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    move v2, v5

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v2, v0

    :goto_6f
    if-eq v2, v3, :cond_87

    if-eq v2, v6, :cond_7a

    if-eq v2, v5, :cond_76

    goto :goto_98

    :cond_76
    invoke-virtual {p0, p1, p2}, Lz/a;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_98

    :cond_7a
    new-instance p3, Lz/a$b;

    invoke-direct {p3, p1, p2}, Lz/a$b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v1, :cond_98

    iget-object v2, v1, Lz/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_87
    new-instance p3, Lz/a$a;

    invoke-direct {p3, p1, p2}, Lz/a$a;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v1, p0, Lz/a;->d:Landroid/util/SparseArray;

    iget v2, p3, Lz/a$a;->a:I

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, p3

    goto :goto_98

    :cond_95
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_98
    :goto_98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3
    :try_end_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_9c} :catch_a2
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_9c} :catch_9d

    goto :goto_25

    :catch_9d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a6

    :catch_a2
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_a6
    :goto_a6
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x50764adb -> :sswitch_64
        0x4c7d471 -> :sswitch_5a
        0x526c4e31 -> :sswitch_51
        0x62ce7272 -> :sswitch_47
        0x7155a865 -> :sswitch_3d
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 11

    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_68

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_65

    if-nez v4, :cond_19

    goto :goto_65

    :cond_19
    const-string v5, "id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    const/16 v1, 0x2f

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    if-ne v1, v2, :cond_5c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_55

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5c

    :cond_55
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "error in parsing id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object p1, p0, Lz/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_68
    :goto_68
    return-void
.end method

.method public final b(FFI)V
    .registers 8

    iget v0, p0, Lz/a;->b:I

    const/4 v1, -0x1

    if-ne v0, p3, :cond_5b

    if-ne p3, v1, :cond_11

    iget-object p3, p0, Lz/a;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz/a$a;

    goto :goto_19

    :cond_11
    iget-object p3, p0, Lz/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz/a$a;

    :goto_19
    iget v0, p0, Lz/a;->c:I

    if-eq v0, v1, :cond_2c

    iget-object v2, p3, Lz/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/a$b;

    invoke-virtual {v0, p1, p2}, Lz/a$b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {p3, p1, p2}, Lz/a$a;->a(FF)I

    move-result p1

    iget p2, p0, Lz/a;->c:I

    if-ne p2, p1, :cond_35

    return-void

    :cond_35
    if-ne p1, v1, :cond_39

    const/4 p2, 0x0

    goto :goto_43

    :cond_39
    iget-object p2, p3, Lz/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz/a$b;

    iget-object p2, p2, Lz/a$b;->f:Landroidx/constraintlayout/widget/c;

    :goto_43
    if-ne p1, v1, :cond_46

    goto :goto_50

    :cond_46
    iget-object p3, p3, Lz/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz/a$b;

    iget p3, p3, Lz/a$b;->e:I

    :goto_50
    if-nez p2, :cond_53

    return-void

    :cond_53
    iput p1, p0, Lz/a;->c:I

    iget-object p1, p0, Lz/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_b5

    :cond_5b
    iput p3, p0, Lz/a;->b:I

    iget-object v0, p0, Lz/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/a$a;

    invoke-virtual {v0, p1, p2}, Lz/a$a;->a(FF)I

    move-result v2

    if-ne v2, v1, :cond_6e

    iget-object v3, v0, Lz/a$a;->d:Landroidx/constraintlayout/widget/c;

    goto :goto_78

    :cond_6e
    iget-object v3, v0, Lz/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/a$b;

    iget-object v3, v3, Lz/a$b;->f:Landroidx/constraintlayout/widget/c;

    :goto_78
    if-ne v2, v1, :cond_7b

    goto :goto_85

    :cond_7b
    iget-object v0, v0, Lz/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/a$b;

    iget v0, v0, Lz/a$b;->e:I

    :goto_85
    if-nez v3, :cond_ae

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO Constraint set found ! id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", dim ="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConstraintLayoutStates"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ae
    iput v2, p0, Lz/a;->c:I

    iget-object p1, p0, Lz/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_b5
    return-void
.end method
