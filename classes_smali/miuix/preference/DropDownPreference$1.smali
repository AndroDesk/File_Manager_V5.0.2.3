.class Lmiuix/preference/DropDownPreference$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-ltz p3, :cond_24

    .line 3
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 5
    invoke-static {p1}, Lmiuix/preference/DropDownPreference;->access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    array-length p1, p1

    .line 10
    if-ge p3, p1, :cond_24

    .line 12
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 14
    invoke-static {p1}, Lmiuix/preference/DropDownPreference;->access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    .line 17
    move-result-object p1

    .line 18
    aget-object p1, p1, p3

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 22
    iget-object p2, p0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 24
    invoke-static {p2}, Lmiuix/preference/DropDownPreference;->access$100(Lmiuix/preference/DropDownPreference;)Landroid/os/Handler;

    .line 27
    move-result-object p2

    .line 28
    new-instance p3, Lmiuix/preference/DropDownPreference$1$1;

    .line 30
    invoke-direct {p3, p0, p1}, Lmiuix/preference/DropDownPreference$1$1;-><init>(Lmiuix/preference/DropDownPreference$1;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    goto :goto_2b

    .line 37
    :cond_24
    const-string p1, "DropDownPreference"

    .line 39
    const-string p2, "Illegal Position In Entry Values\' Array. "

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_2b
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
