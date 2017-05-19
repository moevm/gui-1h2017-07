#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>

const int BLOCK_SIZE=25;
const int MARGIN=5;
const int AREA_ROW=20;
const int AREA_COL=12;

enum Direction
{
    UP,
    DOWN,
    LEFT,
    RIGHT,
    SPACE
};

struct Border
{
    int ubound;
    int dbound;
    int lbound;
    int rbound;
};


struct block_point
{
    int pos_x;
    int pos_y;
    //    block_point(int x,int y):pos_x(x),pos_y(y){}
};

namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT

public:
    void InitGame();
    void StartGame();
    void GameOver();

    void ResetBlock();
    void BlockMove(Direction dir);
    void BlockRotate(int block[4][4]);
    void CreateBlock(int block[4][4],int block_id);
    void GetBorder(int block[4][4],Border &border);
    void ConvertStable(int x,int y);
    bool IsCollide(int x,int y,Direction dir); //есть ли коллизия
    void fullLineOperator(); //Если найдена заполненная строка, она удаляется

public:
    explicit Widget(QWidget *parent = 0);
    ~Widget();

    virtual void paintEvent(QPaintEvent *event); //обновление сцены
    virtual void timerEvent(QTimerEvent *event);  // событие таймера
    virtual void keyPressEvent(QKeyEvent *event); // реакция клавиатуры

private:
    Ui::Widget *ui;

private:
    int game_area[AREA_ROW][AREA_COL];
    block_point block_pos; // текущие координаты окна
    int cur_block[4][4];  // текущие формы блоков
    Border cur_border; // текущая граница блока
    int next_block[4][4]; // следующая фигура
    bool isStable;
    int score;
    int game_timer;
    int paint_timer;
    int speed_ms;
    int refresh_ms;
    int gameTimerAcceleration;
};

#endif // WIDGET_H
